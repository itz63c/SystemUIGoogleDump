.class Lcom/android/systemui/settings/brightness/BrightnessController$7;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/brightness/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    .line 309
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$200(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$100(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$200(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$300(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
