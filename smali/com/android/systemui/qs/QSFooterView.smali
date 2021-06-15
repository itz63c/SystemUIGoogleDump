.class public Lcom/android/systemui/qs/QSFooterView;
.super Landroid/widget/FrameLayout;
.source "QSFooterView.java"


# instance fields
.field private mActionsContainer:Landroid/view/View;

.field private mBuildText:Landroid/widget/TextView;

.field private final mDeveloperSettingsObserver:Landroid/database/ContentObserver;

.field protected mEdit:Landroid/view/View;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field protected mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mQsDisabled:Z

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field private mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field protected mSettingsContainer:Landroid/view/View;

.field private mShouldShowBuildText:Z

.field private mTunerIcon:Landroid/view/View;

.field private mTunerIconTranslation:I


# direct methods
.method public static synthetic $r8$lambda$prxWmjmL-fq8yX52lAJkaJuIvtQ(Lcom/android/systemui/qs/QSFooterView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSFooterView;->lambda$updateEverything$0(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance p1, Lcom/android/systemui/qs/QSFooterView$1;

    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/QSFooterView$1;-><init>(Lcom/android/systemui/qs/QSFooterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterView;->mDeveloperSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSFooterView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterView;->setBuildText()V

    return-void
.end method

.method private createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 5

    .line 183
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterView;->mActionsContainer:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 184
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterView;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    .line 185
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    .line 186
    invoke-virtual {v0, p0, v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    const v0, 0x3f666666    # 0.9f

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$updateEverything$0(ZZ)V
    .locals 0

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSFooterView;->updateVisibilities(ZZ)V

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterView;->updateClickabilities()V

    const/4 p1, 0x0

    .line 267
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method private setBuildText()V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v3, 0x10401b6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 132
    iput-boolean v5, p0, Lcom/android/systemui/qs/QSFooterView;->mShouldShowBuildText:Z

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooterView;->mShouldShowBuildText:Z

    .line 136
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private showUserSwitcher(Z)Z
    .locals 0

    .line 290
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFooterView;->mExpanded:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateClickabilities()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mEdit:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 275
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    return-void
.end method

.method private updateFooterAnimator()V
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterView;->createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void
.end method

.method private updateResources()V
    .locals 3

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterView;->updateFooterAnimator()V

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_footers_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 171
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_footer_tuner_icon_translation:I

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSFooterView;->mTunerIconTranslation:I

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mTunerIcon:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v1

    iget p0, p0, Lcom/android/systemui/qs/QSFooterView;->mTunerIconTranslation:I

    if-eqz v1, :cond_0

    neg-int p0, p0

    :cond_0
    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private updateVisibilities(ZZ)V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mSettingsContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterView;->mQsDisabled:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mTunerIcon:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p1

    .line 282
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 283
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSFooterView;->showUserSwitcher(Z)Z

    move-result p2

    if-eqz p2, :cond_2

    move v2, v3

    .line 282
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 284
    iget-object p2, p0, Lcom/android/systemui/qs/QSFooterView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/qs/QSFooterView;->mExpanded:Z

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v3

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v1

    :goto_3
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 286
    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QSFooterView;->mExpanded:Z

    if-eqz p2, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFooterView;->mShouldShowBuildText:Z

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method disable(IZZ)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSFooterView;->mQsDisabled:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 259
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooterView;->mQsDisabled:Z

    .line 260
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/qs/QSFooterView;->updateEverything(ZZ)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 218
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 219
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    .line 220
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterView;->mDeveloperSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 219
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterView;->updateResources()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 227
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterView;->mDeveloperSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 228
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 96
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x1020003

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mEdit:Landroid/view/View;

    .line 99
    sget v0, Lcom/android/systemui/R$id;->footer_page_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 101
    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 102
    sget v0, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mSettingsContainer:Landroid/view/View;

    .line 104
    sget v0, Lcom/android/systemui/R$id;->multi_user_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 105
    sget v1, Lcom/android/systemui/R$id;->multi_user_avatar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 107
    sget v0, Lcom/android/systemui/R$id;->qs_footer_actions_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mActionsContainer:Landroid/view/View;

    .line 108
    sget v0, Lcom/android/systemui/R$id;->build:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/android/systemui/R$id;->tuner_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mTunerIcon:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterView;->updateResources()V

    .line 118
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterView;->setBuildText()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 252
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 253
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterView;->updateResources()V

    return-void
.end method

.method onUserInfoChanged(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 294
    instance-of p2, p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    if-nez p2, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 296
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v0, 0x1010030

    .line 297
    invoke-static {p2, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 296
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 300
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 243
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    .line 247
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method setExpanded(ZZZ)V
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterView;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 202
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterView;->mExpanded:Z

    .line 203
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/qs/QSFooterView;->updateEverything(ZZ)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 1

    .line 208
    iput p1, p0, Lcom/android/systemui/qs/QSFooterView;->mExpansionAmount:F

    .line 209
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterView;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_1

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    return-void
.end method

.method public setKeyguardShowing()V
    .locals 1

    .line 193
    iget v0, p0, Lcom/android/systemui/qs/QSFooterView;->mExpansionAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterView;->setExpansion(F)V

    return-void
.end method

.method updateAnimator(II)V
    .locals 6

    .line 141
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 143
    div-int/2addr p1, p2

    .line 144
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$dimen;->default_gear_space:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 146
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v5

    sub-int/2addr p1, p2

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :goto_0
    int-to-float p1, p1

    const/4 p2, 0x0

    aput p1, v4, p2

    const/4 p1, 0x0

    aput p1, v4, v0

    const-string/jumbo p1, "translationX"

    .line 147
    invoke-virtual {v1, v2, p1, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/QSFooterView;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    const-string v1, "rotation"

    .line 149
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterView;->mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 152
    iget p1, p0, Lcom/android/systemui/qs/QSFooterView;->mExpansionAmount:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFooterView;->setExpansion(F)V

    return-void

    :array_0
    .array-data 4
        -0x3d100000    # -120.0f
        0x0
    .end array-data
.end method

.method updateEverything(ZZ)V
    .locals 1

    .line 264
    new-instance v0, Lcom/android/systemui/qs/QSFooterView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/QSFooterView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFooterView;ZZ)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
