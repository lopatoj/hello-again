/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2022 Justin Lopato <justin@lopato.org>
 */

public class App : Gtk.Application {
    public App() {
        Object (
            application_id: "com.github.lopatoj.hello_again",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate() {
        var label = new Gtk.Label ("Hello Again World!");
        var main_window = new Gtk.ApplicationWindow(this) {
            default_height = 300,
            default_width = 300,
            title = "Hello Again"
        };
        main_window.add(label);
        main_window.show_all();
    }
    
    public static int main(string[] args) {
        return new App().run(args);
    }
}
