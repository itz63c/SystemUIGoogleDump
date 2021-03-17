.class Lcom/android/systemui/settings/brightness/BrightnessController$4;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/brightness/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$1200(Lcom/android/systemui/settings/brightness/BrightnessController;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 247
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$700(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 248
    invoke-static {v3}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$1800(Lcom/android/systemui/settings/brightness/BrightnessController;)F

    move-result v3

    const-string v4, "screen_brightness_for_vr_float"

    .line 247
    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    goto :goto_0

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$700(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 252
    invoke-static {v3}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$1900(Lcom/android/systemui/settings/brightness/BrightnessController;)F

    move-result v3

    const-string v4, "screen_brightness_float"

    .line 251
    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 256
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 257
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$1500(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 258
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
