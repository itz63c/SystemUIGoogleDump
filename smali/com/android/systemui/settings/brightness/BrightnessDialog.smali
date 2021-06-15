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

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 50
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x31

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x2

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 70
    sget p1, Lcom/android/systemui/R$layout;->brightness_mirror_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 71
    sget p1, Lcom/android/systemui/R$id;->brightness_mirror_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 75
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    invoke-virtual {v2, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSlider;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 77
    invoke-virtual {v2}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 79
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p1, p0, v2, v0}, Lcom/android/systemui/settings/brightness/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

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

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 104
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->registerCallbacks()V

    const/16 v0, 0xdc

    .line 86
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/16 v0, 0xdc

    .line 92
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 93
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->unregisterCallbacks()V

    return-void
.end method
