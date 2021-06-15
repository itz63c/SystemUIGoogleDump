.class public final Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;
.super Ljava/lang/Object;
.source "NotificationLaunchAnimatorController.kt"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# instance fields
.field private final depthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field private final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private final notificationKey:Ljava/lang/String;

.field private final notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 1

    const-string v0, "notificationShadeWindowViewController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationListContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "depthController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->depthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 43
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 44
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 46
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationKey:Ljava/lang/String;

    return-void
.end method

.method private final applyParams(Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;)V

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->depthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setNotificationLaunchAnimationParams(Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;)V

    return-void
.end method

.method private final removeHun(Z)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->removeNotification(Ljava/lang/String;ZZ)Z

    return-void
.end method


# virtual methods
.method public createAnimatorState()Lcom/android/systemui/animation/ActivityLaunchAnimator$State;
    .locals 11

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 57
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v2

    .line 59
    new-instance v10, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;

    const/4 v3, 0x1

    .line 60
    aget v4, v2, v3

    .line 61
    aget v3, v2, v3

    add-int v5, v3, v0

    .line 62
    aget v6, v2, v1

    .line 63
    aget v0, v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    add-int v7, v0, v1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusTop()F

    move-result v8

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusBottom()F

    move-result v9

    move-object v3, v10

    .line 59
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;-><init>(IIIIFF)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setStartTranslationZ(F)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setStartClipTopAmount(I)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    .line 72
    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setParentStartClipTopAmount(I)V

    if-eqz v0, :cond_0

    int-to-float v0, v0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    float-to-double v0, v0

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-virtual {v10, p0}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setStartClipTopAmount(I)V

    :cond_0
    return-object v10
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onIntentStarted(Z)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setExpandAnimationRunning(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->removeHun(Z)V

    :cond_0
    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setExpandAnimationRunning(Z)V

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->removeHun(Z)V

    return-void
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 2

    .line 119
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 121
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandAnimationRunning(Z)V

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setExpandAnimationRunning(Z)V

    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 124
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->applyParams(Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->removeHun(Z)V

    return-void
.end method

.method public onLaunchAnimationProgress(Lcom/android/systemui/animation/ActivityLaunchAnimator$State;FF)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    check-cast p1, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;

    .line 140
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setProgress(F)V

    .line 141
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setLinearProgress(F)V

    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->applyParams(Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;)V

    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandAnimationRunning(Z)V

    .line 112
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 114
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/16 v0, 0x10

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method

.method public setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 0

    const-string p0, "ignored"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
