//
//  Stocks_ExWidget.swift
//  Stocks_ExWidget
//
//  Created by Esraa Ragab on 18/10/2023.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
}

struct Stocks_ExWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        VStack {
            HeaderView()
                .background(
                    LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(20)
            VStack {
                ListCellView(object: DataModel.data[0])
                ListCellView(object: DataModel.data[1])
            }.padding(5)
        }
        .padding()
    }
}

@main
struct Stocks_ExWidget: Widget {
    let kind: String = "Stocks_ExWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            Stocks_ExWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemLarge])

    }
}

struct Stocks_ExWidget_Previews: PreviewProvider {
    static var previews: some View {
        Stocks_ExWidgetEntryView(entry: SimpleEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
