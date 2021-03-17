.class Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source "OneHandedGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$EventReceiver;->this$0:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    .line 250
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$EventReceiver;->this$0:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    invoke-static {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->access$000(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;Landroid/view/InputEvent;)V

    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
