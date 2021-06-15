.class public Lcom/google/android/systemui/gamedashboard/ShortcutBarController;
.super Ljava/lang/Object;
.source "ShortcutBarController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFpsController:Lcom/google/android/systemui/gamedashboard/FpsController;

.field private mIsAttached:Z

.field private final mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

.field private final mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/google/android/systemui/gamedashboard/FpsController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Lcom/android/internal/logging/UiEventLogger;Lcom/google/android/systemui/gamedashboard/ToastController;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mWindowManager:Landroid/view/WindowManager;

    .line 53
    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mFpsController:Lcom/google/android/systemui/gamedashboard/FpsController;

    .line 54
    iput-object p8, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    .line 56
    invoke-static {p1, p4, p5, p6, p7}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->create(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    return-void
.end method

.method private hideUI()V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mIsAttached:Z

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->remove()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->hideUI()V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->unregisterFps()V

    return-void
.end method

.method public isFpsVisible()Z
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->isFpsVisible()Z

    move-result p0

    return p0
.end method

.method public isRecordVisible()Z
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->isRecordVisible()Z

    move-result p0

    return p0
.end method

.method public isScreenshotVisible()Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->isScreenshotVisible()Z

    move-result p0

    return p0
.end method

.method public registerFps(I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mFpsController:Lcom/google/android/systemui/gamedashboard/FpsController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/FpsController;->unregister()V

    .line 86
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mFpsController:Lcom/google/android/systemui/gamedashboard/FpsController;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/ShortcutBarController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/systemui/gamedashboard/FpsController;->register(ILcom/google/android/systemui/gamedashboard/FpsController$Callback;)V

    return-void
.end method

.method public setFpsVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    sget v1, Lcom/android/systemui/R$string;->game_dashboard_fps_counter_on:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/ToastController;->showShortcutText(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setFpsVisibility(Z)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->updateVisibility(Z)V

    return-void
.end method

.method public setRecordVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    sget v1, Lcom/android/systemui/R$string;->game_dashboard_record_shortcut_available:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/ToastController;->showShortcutText(I)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setRecordVisibility(Z)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->updateVisibility(Z)V

    return-void
.end method

.method public setScreenshotVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    sget v1, Lcom/android/systemui/R$string;->game_dashboard_screenshot_shortcut_available:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/ToastController;->showShortcutText(I)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setScreenshotVisibility(Z)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->updateVisibility(Z)V

    return-void
.end method

.method public show()V
    .locals 7

    .line 123
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mIsAttached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v5, 0x108

    .line 129
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7f6

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 135
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    const/4 v1, 0x0

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x3

    .line 137
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 138
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "Shortcut Bar"

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mIsAttached:Z

    return-void
.end method

.method public showDndText(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 110
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    sget p1, Lcom/android/systemui/R$string;->game_dashboard_dnd_on:I

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ToastController;->showShortcutText(I)V

    :cond_0
    return-void
.end method

.method public unregisterFps()V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mFpsController:Lcom/google/android/systemui/gamedashboard/FpsController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FpsController;->unregister()V

    return-void
.end method

.method public updateVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->show()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->shouldBeVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->hideUI()V

    :cond_1
    :goto_0
    return-void
.end method
