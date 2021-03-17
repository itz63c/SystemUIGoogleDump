.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# instance fields
.field private mCanShowLogout:Z

.field private mCanShowOwnerInfo:Z

.field private mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

.field private mDarkAmount:F

.field private mHandler:Landroid/os/Handler;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private mIconTopMargin:I

.field private mIconTopMarginWithHeader:I

.field private mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogoutView:Landroid/widget/TextView;

.field private mNotificationIcons:Landroid/view/View;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mPendingMarqueeStart:Ljava/lang/Runnable;

.field private mShowingHeader:Z

.field private mTextColor:I


# direct methods
.method public static synthetic $r8$lambda$APcApo7nBT8znOhWRa1yx2qze5Q(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->onSliceContentChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$BVC1J24fXdCFpEKMZUhKuwztwnI(Lcom/android/keyguard/KeyguardStatusView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->onLogoutClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SsvJAOFAKUklSORzG45d5tUt0So(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->lambda$setEnableMarquee$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mCanShowLogout:Z

    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mCanShowOwnerInfo:Z

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 89
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    .line 90
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 91
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    .line 92
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method private synthetic lambda$setEnableMarquee$0()V
    .locals 1

    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarqueeImpl(Z)V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    return-void
.end method

.method private layoutOwnerInfo()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 300
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 302
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 303
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 305
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setBottom(I)V

    .line 306
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 309
    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollY(I)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollY(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadBottomMargin()V
    .locals 2

    .line 290
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMargin:I

    .line 291
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_vertical_padding_with_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMarginWithHeader:I

    return-void
.end method

.method private onLogoutClicked(Landroid/view/View;)V
    .locals 2

    .line 322
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 325
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyguardStatusView"

    const-string v0, "Failed to logout user"

    .line 327
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private onSliceContentChanged()V
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSliceView;->hasHeader()Z

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setKeyguardShowingHeader(Z)V

    .line 175
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mShowingHeader:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 178
    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mShowingHeader:Z

    .line 179
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v0, :cond_1

    .line 183
    iget v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMarginWithHeader:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMargin:I

    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 182
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 186
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setKeyguardHidingBigClock(Z)V

    return-void
.end method

.method private setEnableMarqueeImpl(Z)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method private shouldShowLogout()Z
    .locals 0

    .line 317
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLogoutEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 318
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method getLogoutButtonHeight()I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    :cond_1
    return v1
.end method

.method getOwnerInfoHeight()I
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 209
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    :cond_1
    return v1
.end method

.method onDensityOrFontScaleChanged()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 225
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->widget_label_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 227
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->loadBottomMargin()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 140
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 141
    sget v0, Lcom/android/systemui/R$id;->logout:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/android/systemui/R$id;->clock_notification_icon_container:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 144
    new-instance v1, Lcom/android/keyguard/KeyguardStatusView-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->keyguard_clock_container:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setShowCurrentUserTime(Z)V

    .line 149
    iget-object v0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;->isNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    new-instance v1, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;

    iget-object v2, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 152
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mCanShowOwnerInfo:Z

    if-eqz v0, :cond_2

    .line 153
    sget v0, Lcom/android/systemui/R$id;->owner_info:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 156
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_area:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockSwitch;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    new-instance v1, Lcom/android/keyguard/KeyguardStatusView-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSliceView;->setContentChangeListener(Ljava/lang/Runnable;)V

    .line 160
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->onSliceContentChanged()V

    .line 162
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 165
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView()V

    .line 166
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDark()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 194
    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout;->onLayout(ZIIII)V

    .line 195
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->layoutOwnerInfo()V

    return-void
.end method

.method setCanShowLogout(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mCanShowLogout:Z

    .line 135
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView()V

    return-void
.end method

.method setCanShowOwnerInfo(Z)V
    .locals 1

    .line 120
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mCanShowOwnerInfo:Z

    .line 121
    sget p1, Lcom/android/systemui/R$id;->owner_info:I

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 123
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mCanShowOwnerInfo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method setDarkAmount(F)V
    .locals 1

    .line 247
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->setDarkAmount(F)V

    .line 252
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDark()V

    return-void
.end method

.method setEnableMarquee(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 99
    new-instance p1, Lcom/android/keyguard/KeyguardStatusView-$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardStatusView-$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    .line 103
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarqueeImpl(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method updateDark()V
    .locals 5

    .line 256
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 257
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 258
    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 262
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 263
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->layoutOwnerInfo()V

    .line 267
    :cond_4
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSliceView;->setDarkAmount(F)V

    .line 269
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setTextColor(I)V

    return-void
.end method

.method updateLogoutView()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mCanShowLogout:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->shouldShowLogout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    iget-object p0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1040397

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateOwnerInfo()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 237
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 236
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDark()V

    return-void
.end method
