.class public Lcom/android/systemui/recents/ScreenPinningRequest;
.super Ljava/lang/Object;
.source "ScreenPinningRequest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
    }
.end annotation


# instance fields
.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private mNavBarMode:I

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

.field private final mStatusBarOptionalLazy:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;

.field private taskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mStatusBarOptionalLazy:Ljava/util/Optional;

    const-string p2, "accessibility"

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo p2, "window"

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    .line 92
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 93
    const-class p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mNavBarMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/WindowManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/ScreenPinningRequest;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mNavBarMode:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/ScreenPinningRequest;)Ljava/util/Optional;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mStatusBarOptionalLazy:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method


# virtual methods
.method public clearPrompt()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    :cond_0
    return-void
.end method

.method public getRequestLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 160
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x13

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x15

    goto :goto_0

    :cond_1
    const/16 p1, 0x51

    :goto_0
    const/4 v0, -0x2

    .line 165
    invoke-direct {p0, v0, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object p0
.end method

.method protected getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 134
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e8

    const/16 v4, 0x108

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 141
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 142
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v0, "ScreenPinningConfirmation"

    .line 143
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x77

    .line 144
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->screen_pinning_ok_button:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-ne v0, p1, :cond_1

    .line 153
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->taskId:I

    invoke-interface {p1, v0}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mNavBarMode:I

    return-void
.end method

.method public showPrompt(IZ)V
    .locals 1

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->taskId:I

    .line 113
    new-instance p1, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest;Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    const/16 p2, 0x100

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
