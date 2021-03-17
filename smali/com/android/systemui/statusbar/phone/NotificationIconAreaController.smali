.class public Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field private mAnimationsEnabled:Z

.field private mAodIconAppearTranslation:I

.field private mAodIconTint:I

.field private mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mAodIconsVisible:Z

.field private final mBubblesOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation
.end field

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field protected mCenteredIconArea:Landroid/view/View;

.field private mCenteredIconTint:I

.field private mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mContext:Landroid/content/Context;

.field private final mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field private final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mIconHPadding:I

.field private mIconSize:I

.field private mIconTint:I

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mNotificationEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotificationIconArea:Landroid/view/View;

.field private mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field final mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShowLowPriority:Z

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mTintArea:Landroid/graphics/Rect;

.field private final mUpdateStatusBarIcons:Ljava/lang/Runnable;

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public static synthetic $r8$lambda$81pNAgOLg7Y9e-oCwEVbi22byhM(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$updateAodNotificationIcons$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K4_bBf6Y61vhgxtlexrA7sAAOi0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$updateShelfIcons$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WUWxIwsuCBiWhuhXwNT-YT0tFn4(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$updateStatusBarIcons$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XKzC69-vd36_wudlcdKQ_-IiKCE(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$updateCenterIcon$2(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XLccTzJl2g5YINUh1BQ6tywGoKA(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$updateAodIconColors$6(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l16wmqFJcyMOO6ItmgoNRDlTtkU(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$applyNotificationIconsTint$5(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$trKiTy59hanM3mO-7LOGEzMiZoU(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$applyNotificationIconsTint$4(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/statusbar/phone/DozeParameters;Ljava/util/Optional;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Lcom/android/systemui/demomode/DemoModeController;",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 78
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    .line 80
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationEntries:Ljava/util/List;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    .line 100
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    .line 123
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 126
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 127
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 128
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 129
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 130
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 131
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 132
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBubblesOptional:Ljava/util/Optional;

    .line 133
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 134
    invoke-virtual {p9, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 135
    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 136
    invoke-virtual {p6, v0}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationSettingsListener(Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadAodColor()V

    .line 140
    invoke-interface {p10, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    return p1
.end method

.method private animateInAodIconTranslation()V
    .locals 2

    .line 626
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 627
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 628
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 629
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 630
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private applyNotificationIconsTint()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 520
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 521
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 522
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_1

    .line 525
    :cond_0
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 530
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 531
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_3

    .line 534
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 538
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconColors()V

    return-void
.end method

.method private generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 227
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getStatusBarHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private synthetic lambda$applyNotificationIconsTint$4(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 525
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method private synthetic lambda$applyNotificationIconsTint$5(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 534
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method private synthetic lambda$updateAodIconColors$6(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 645
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method private static synthetic lambda$updateAodNotificationIcons$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getAodIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateCenterIcon$2(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getCenteredIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateShelfIcons$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateStatusBarIcons$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method private reloadAodColor()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    return-void
.end method

.method private reloadDimens(Landroid/content/Context;)V
    .locals 1

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1050273

    .line 233
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    .line 234
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_icon_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    .line 235
    sget v0, Lcom/android/systemui/R$dimen;->shelf_appear_translation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconAppearTranslation:I

    return-void
.end method

.method private updateAnimations()V
    .locals 5

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 594
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v3, :cond_2

    .line 595
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 597
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 598
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method

.method private updateAodIconColors()V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 640
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 641
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 642
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_1

    .line 645
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAodIconsVisibility(Z)V
    .locals 4

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-nez v0, :cond_0

    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 676
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 677
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-eq v3, v1, :cond_3

    move v0, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 680
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->isPulseExpanding()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    .line 683
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconsVisible:Z

    if-eq v3, v0, :cond_a

    .line 684
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconsVisible:Z

    .line 685
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_8

    .line 687
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    .line 688
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconsVisible:Z

    if-eqz p1, :cond_7

    if-eqz v1, :cond_6

    .line 691
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 692
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 693
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->appearAodIcons()V

    goto :goto_4

    .line 696
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->animateInAodIconTranslation()V

    .line 698
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;)V

    goto :goto_4

    .line 702
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->animateInAodIconTranslation()V

    .line 703
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;)V

    goto :goto_4

    .line 706
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 707
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 708
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x4

    :goto_3
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    :goto_4
    return-void
.end method

.method private updateCenterIcon()V
    .locals 11

    .line 370
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda7;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method

.method private updateIconLayoutParams(Landroid/content/Context;)V
    .locals 3

    .line 201
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 205
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 207
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 209
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v1, :cond_2

    move v1, v0

    .line 212
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 214
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v1, :cond_3

    .line 218
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 220
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "ZZZZZZZZ)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    .line 416
    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    move v14, v13

    .line 418
    :goto_0
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_2

    .line 419
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationEntries:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 420
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 421
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p1

    .line 424
    invoke-interface {v0, v15}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object/from16 v0, p1

    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 436
    :cond_2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v13

    .line 438
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_a

    .line 439
    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 440
    instance-of v5, v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v5, :cond_3

    goto :goto_6

    .line 443
    :cond_3
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 445
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 446
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    move v6, v13

    move v7, v6

    .line 447
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 448
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 449
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 450
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v7, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    move v7, v13

    goto :goto_5

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    if-eqz v7, :cond_8

    .line 460
    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_7

    .line 462
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 463
    invoke-virtual {v0, v5, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_7
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 471
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 473
    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 474
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v4, :cond_b

    .line 475
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 478
    :cond_c
    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 479
    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    .line 481
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v13

    :goto_8
    if-ge v2, v0, :cond_d

    .line 483
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v11, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 486
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    move v1, v13

    .line 487
    :goto_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 488
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 490
    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->removeTransientView(Landroid/view/View;)V

    .line 491
    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_f

    if-eqz p5, :cond_e

    .line 493
    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnDismissListener(Ljava/lang/Runnable;)V

    .line 495
    :cond_e
    invoke-virtual {v11, v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 499
    :cond_10
    invoke-virtual {v11, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    move v1, v13

    :goto_a
    if-ge v1, v0, :cond_12

    .line 503
    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 504
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v2, v3, :cond_11

    goto :goto_b

    .line 508
    :cond_11
    invoke-virtual {v11, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 509
    invoke-virtual {v11, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 511
    :cond_12
    invoke-virtual {v11, v13}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    const/4 v0, 0x0

    .line 512
    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method private updateNotificationIcons()V
    .locals 0

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    .line 338
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateShelfIcons()V

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateCenterIcon()V

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method

.method private updateShelfIcons()V
    .locals 11

    .line 346
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda5;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method

.method private updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 2

    .line 542
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lcom/android/systemui/R$id;->icon_is_pre_L:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 546
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 548
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 549
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method


# virtual methods
.method public appearAodIcons()V
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconAppearTranslation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 613
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->animateInAodIconTranslation()V

    .line 614
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 615
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 616
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 617
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 618
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 621
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public demoCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 715
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "notifications"

    .line 716
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 722
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    if-eqz p1, :cond_1

    const-string/jumbo p1, "visible"

    .line 723
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "false"

    .line 724
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 725
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getCenteredNotificationAreaView()Landroid/view/View;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    return-object p0
.end method

.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    return-object p0
.end method

.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 144
    sget p0, Lcom/android/systemui/R$layout;->notification_icon_area:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;)V
    .locals 2

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 153
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 155
    sget v1, Lcom/android/systemui/R$id;->notificationIcons:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 157
    sget v0, Lcom/android/systemui/R$layout;->center_icon_area:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    .line 158
    sget v0, Lcom/android/systemui/R$id;->centeredIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    if-nez p1, :cond_0

    .line 262
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 267
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 268
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 271
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 272
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    .line 275
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method

.method public onDemoModeFinished()V
    .locals 1

    .line 731
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 732
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconLayoutParams(Landroid/content/Context;)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-nez v0, :cond_0

    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 577
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 578
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDozing(ZZJ)V

    return-void
.end method

.method public onFullyHiddenChanged(Z)V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v1, p1

    .line 660
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 661
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    return-void
.end method

.method public onPulseExpansionChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 667
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    const/4 p1, 0x0

    .line 588
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 589
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 602
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadAodColor()V

    .line 603
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconColors()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 582
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    .line 583
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    return-void
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsolatedIconLocation(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public setupAodIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 171
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 172
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOnLockScreen(ZI)V

    .line 173
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconLayoutParams(Landroid/content/Context;)V

    return-void
.end method

.method public setupShelf(Lcom/android/systemui/statusbar/NotificationShelfController;)V
    .locals 1

    .line 192
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelfController;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationShelfController;->setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    return-void
.end method

.method shouldShouldLowPriorityIcons()Z
    .locals 0

    .line 398
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    return p0
.end method

.method protected shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZZZ)Z
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getCenteredIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getCenteredIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p9, :cond_1

    return v0

    :cond_1
    if-eqz p7, :cond_2

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result p7

    if-nez p7, :cond_2

    return v2

    .line 292
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p7

    invoke-virtual {p7}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result p7

    if-eqz p7, :cond_3

    if-nez p2, :cond_3

    return v2

    :cond_3
    if-eqz p6, :cond_4

    .line 295
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p6

    iget-object p7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p7}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_4

    return v2

    :cond_4
    if-nez p3, :cond_5

    .line 298
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result p3

    const/4 p6, 0x3

    if-ge p3, p6, :cond_5

    return v2

    .line 301
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopLevelChild()Z

    move-result p3

    if-nez p3, :cond_6

    return v2

    .line 304
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p3

    const/16 p6, 0x8

    if-ne p3, p6, :cond_7

    return v2

    .line 307
    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result p3

    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    return v2

    :cond_8
    if-eqz p5, :cond_9

    .line 310
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isLastMessageFromReply()Z

    move-result p3

    if-eqz p3, :cond_9

    return v2

    :cond_9
    if-nez p2, :cond_a

    .line 314
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressStatusBar()Z

    move-result p2

    if-eqz p2, :cond_a

    return v2

    :cond_a
    if-eqz p8, :cond_c

    .line 317
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showingPulsing()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 318
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 319
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPulseSuppressed()Z

    move-result p2

    if-nez p2, :cond_c

    :cond_b
    return v2

    .line 322
    :cond_c
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBubblesOptional:Ljava/util/Optional;

    .line 323
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/bubbles/Bubbles;->isBubbleExpanded(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    return v2

    :cond_d
    return v1
.end method

.method public showIconCentered(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getCenteredIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p1

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 559
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons()V

    :cond_1
    return-void
.end method

.method public showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    return-void
.end method

.method public updateAodNotificationIcons()V
    .locals 11

    .line 382
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-nez v2, :cond_0

    return-void

    .line 385
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda4;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 392
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v9

    const/4 v10, 0x0

    move-object v0, p0

    .line 385
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method

.method public updateNotificationIcons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationEntries:Ljava/util/List;

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons()V

    return-void
.end method

.method public updatePosition(ILcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V
    .locals 1

    .line 185
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz p0, :cond_0

    .line 186
    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p1, p1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    :cond_0
    return-void
.end method

.method public updateStatusBarIcons()V
    .locals 11

    .line 358
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController-$$ExternalSyntheticLambda6;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method
