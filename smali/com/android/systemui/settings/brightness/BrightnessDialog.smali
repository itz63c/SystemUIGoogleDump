.class public Lcom/android/systemui/settings/brightness/BrightnessDialog;
.super Landroid/app/Activity;
.source "BrightnessDialog.java"


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x31

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x2

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 60
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 65
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSlider;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 67
    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 68
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/settings/brightness/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4

    if-ne p1, v0, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 93
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->registerCallbacks()V

    const/16 v0, 0xdc

    .line 75
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/16 v0, 0xdc

    .line 81
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->unregisterCallbacks()V

    return-void
.end method
