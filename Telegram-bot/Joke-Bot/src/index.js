import { Telegraf } from "telegraf";
import { message } from "telegraf/filters";
import "dotenv/config";
import { getRandomx } from "./utils/jokeAndGreeting.js";
import { jokes, greetingMessages } from "./data/msgCollection.js";

try {
    const bot = new Telegraf(process.env.BOT_TOKEN);
    bot.start((ctx) => ctx.reply(getRandomx(greetingMessages)));
    bot.command("joke", (ctx) =>
        ctx.reply(
            `${getRandomx(jokes)} 🤣 \n\n\n wanna listen more jokes? /joke`
        )
    );
    bot.on(message("text"), async (ctx) => {
        ctx.reply(
            "Hello! I'm your friendly chatbot assistant. I can only understand and respond to the certain commands specified in: /help"
        );
    });
    bot.help((ctx) => ctx.reply("Help commands: \n\n /start \n\n /joke"));
    bot.launch();
} catch (e) {
    console.log("Something went wrong", e);
}
