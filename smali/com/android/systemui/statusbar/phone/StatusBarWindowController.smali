.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;
    }
.end annotation


# instance fields
.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

.field private mLaunchAnimationContainer:Landroid/view/ViewGroup;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private final mResources:Landroid/content/res/Resources;

.field private mStatusBarView:Landroid/view/ViewGroup;

.field private final mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Landroid/content/res/Resources;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 65
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    .line 66
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getStatusBarWindowView()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    .line 67
    sget p2, Lcom/android/systemui/R$id;->status_bar_launch_animation_container:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLaunchAnimationContainer:Landroid/view/ViewGroup;

    .line 69
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 70
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mResources:Landroid/content/res/Resources;

    .line 72
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    if-gez p1, :cond_0

    const p1, 0x1050270

    .line 73
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    :cond_0
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 161
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 163
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 174
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1

    .line 175
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1
    return-void
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 157
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    :goto_0
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 7

    .line 105
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7ffff8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 113
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 114
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    return-void
.end method

.method public getLaunchAnimationContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLaunchAnimationContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getStatusBarHeight()I
    .locals 0

    .line 79
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    return p0
.end method

.method public refreshStatusBarHeight()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 90
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    if-eq v1, v0, :cond_0

    .line 91
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    :cond_0
    return-void
.end method

.method public setForceStatusBarVisible(Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    .line 128
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setLaunchAnimationRunning(Z)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-ne p1, v1, :cond_0

    return-void

    .line 151
    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    .line 152
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method
