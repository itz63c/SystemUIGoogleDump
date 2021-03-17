.class public Lcom/android/systemui/qs/QSDetail;
.super Landroid/widget/LinearLayout;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetail$Callback;
    }
.end annotation


# instance fields
.field private mAnimatingOpen:Z

.field private mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private mClosingDetail:Z

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mDetailContent:Landroid/view/ViewGroup;

.field protected mDetailDoneButton:Landroid/widget/TextView;

.field protected mDetailSettingsButton:Landroid/widget/TextView;

.field private final mDetailViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field private mFullyExpanded:Z

.field private mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mOpenX:I

.field private mOpenY:I

.field protected mQsDetailHeader:Landroid/view/View;

.field protected mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field private mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field private mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

.field protected mQsDetailHeaderTitle:Landroid/widget/TextView;

.field protected mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field private mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private mScanState:Z

.field private mShouldAnimate:Z

.field private mSwitchState:Z

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mTriggeredExpand:Z

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$VZtj6pgpWxcP7qbcg9rYNAtBk_E(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->lambda$setupDetailFooter$1(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vq-ZCVfPBawAdmiNLLZoxg0UgrE(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail;->lambda$setupDetailFooter$0(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 53
    sget-object p1, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSEvents;->getQsUiEventsLogger()Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 337
    new-instance p1, Lcom/android/systemui/qs/QSDetail$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$2;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    .line 372
    new-instance p1, Lcom/android/systemui/qs/QSDetail$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$3;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 394
    new-instance p1, Lcom/android/systemui/qs/QSDetail$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$4;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSDetail;)Landroid/widget/Switch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSDetail;ZZ)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSDetail;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->checkPendingAnimations()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSFooter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Lcom/android/systemui/qs/QSFooter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSDetail;)Landroid/view/ViewGroup;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private checkPendingAnimations()V
    .locals 2

    .line 333
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v1, :cond_0

    .line 334
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 333
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 315
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_1

    .line 318
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 319
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 320
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 321
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/qs/QSDetail-$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/QSDetail-$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/drawable/Animatable;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 324
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 325
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    .line 326
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 327
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/qs/QSDetail-$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/QSDetail-$$ExternalSyntheticLambda3;-><init>(Landroid/graphics/drawable/Animatable;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private handleToggleStateChanged(ZZ)V
    .locals 1

    .line 304
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    if-eqz v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 310
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setupDetailFooter$0(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V
    .locals 2

    .line 264
    const-class p3, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/logging/MetricsLogger;

    .line 265
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x3a1

    .line 264
    invoke-virtual {p3, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 266
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->moreSettingsEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 267
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    .line 268
    invoke-interface {p0, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$setupDetailFooter$1(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/view/View;)V
    .locals 1

    .line 271
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings:I

    .line 272
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 271
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 273
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->onDoneButtonClicked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->closeDetail()V

    :cond_0
    return-void
.end method

.method private updateDetailText()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_done:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 143
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_more_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method protected animateDetailVisibleDiff(IIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 3

    if-eqz p3, :cond_4

    .line 236
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    .line 237
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 242
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 243
    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_2
    :goto_1
    const/high16 p3, 0x3f800000    # 1.0f

    .line 238
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 239
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p3, p1, p2, v0, p4}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 163
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    .line 164
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    if-eqz p4, :cond_2

    .line 167
    iget-boolean p4, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez p4, :cond_2

    .line 168
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 169
    const-class p4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p4, v4}, Lcom/android/systemui/statusbar/CommandQueue;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 173
    :goto_2
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->shouldAnimate()Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/systemui/qs/QSDetail;->mShouldAnimate:Z

    .line 174
    iput p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 175
    iput p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    goto :goto_3

    .line 178
    :cond_3
    iget p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 179
    iget p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    if-eqz p4, :cond_4

    .line 180
    iget-boolean p4, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    if-eqz p4, :cond_4

    .line 181
    const-class p4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    .line 182
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    :cond_4
    :goto_3
    if-eq v3, v2, :cond_5

    move p4, v0

    goto :goto_4

    :cond_5
    move p4, v1

    :goto_4
    if-nez p4, :cond_6

    if-nez v3, :cond_6

    return-void

    :cond_6
    if-eqz v2, :cond_8

    .line 190
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v3

    .line 191
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {p1, v4, v5, v6}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 197
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 198
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 199
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    const-class v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 201
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->openDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 202
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->accessibility_quick_settings_detail:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 204
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v0, v1

    .line 202
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 205
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 206
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 207
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 193
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must return detail view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eqz v3, :cond_9

    .line 210
    const-class p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/DetailAdapter;->closeDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 213
    :cond_9
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    .line 214
    iput-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 215
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 216
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v3, v1}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 218
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanelController;->setGridContentVisibility(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    :goto_5
    const/16 v0, 0x20

    .line 221
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mShouldAnimate:Z

    if-eqz v0, :cond_a

    .line 224
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/systemui/qs/QSDetail;->animateDetailVisibleDiff(IIZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_6

    :cond_a
    if-eqz v2, :cond_b

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->showImmediately()V

    goto :goto_6

    .line 229
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->hideImmediately()V

    :goto_6
    return-void
.end method

.method public hideImmediately()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailClipper;->cancelAnimator()V

    const/16 v0, 0x8

    .line 257
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public isClosingDetail()Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p0
.end method

.method public isShowingDetail()Z
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$dimen;->qs_detail_button_text_size:I

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1020002

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    const v0, 0x102001a

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v0, 0x1020019

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/android/systemui/R$id;->qs_detail_header:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020016

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->toggle_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    .line 107
    sget v0, Lcom/android/systemui/R$id;->qs_detail_header_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    .line 111
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    :cond_0
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/QSFooter;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 118
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 119
    iput-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 120
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanelController;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method protected setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 3

    .line 261
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/QSDetail-$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/qs/QSDetail-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qs/QSDetail-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 283
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 284
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$1;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method showImmediately()V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailClipper;->cancelAnimator()V

    .line 252
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetailClipper;->showBackground()V

    return-void
.end method
