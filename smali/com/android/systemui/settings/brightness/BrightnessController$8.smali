.class Lcom/android/systemui/settings/brightness/BrightnessController$8;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/brightness/BrightnessController;->onChanged(ZZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

.field final synthetic val$settingToChange:Ljava/lang/String;

.field final synthetic val$valFloat:F


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;Ljava/lang/String;F)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$8;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController$8;->val$settingToChange:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController$8;->val$valFloat:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$8;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$700(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$8;->val$settingToChange:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$8;->val$valFloat:F

    const/4 v2, -0x2

    invoke-static {v0, v1, p0, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method
