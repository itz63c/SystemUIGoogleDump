.class Lcom/android/systemui/screenshot/ScreenshotController$1;
.super Landroid/os/Handler;
.source "ScreenshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/Looper;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 199
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotController;->access$000(Lcom/android/systemui/screenshot/ScreenshotController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_INTERACTION_TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 205
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->dismissScreenshot(Z)V

    :goto_0
    return-void
.end method
