.class public final Lcom/android/systemui/media/KeyguardMediaController;
.super Ljava/lang/Object;
.source "KeyguardMediaController.kt"


# instance fields
.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mediaHost:Lcom/android/systemui/media/MediaHost;

.field private final notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

.field private splitShadeContainer:Landroid/view/ViewGroup;

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private useSplitShadeContainer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private visibilityChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .locals 1

    const-string v0, "mediaHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifLockscreenUserManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/media/KeyguardMediaController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/media/KeyguardMediaController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 41
    iput-object p4, p0, Lcom/android/systemui/media/KeyguardMediaController;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 45
    new-instance p2, Lcom/android/systemui/media/KeyguardMediaController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/KeyguardMediaController$1;-><init>(Lcom/android/systemui/media/KeyguardMediaController;)V

    invoke-interface {p3, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    const/4 p2, 0x1

    .line 60
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    .line 61
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/MediaHost;->setFalsingProtectionNeeded(Z)V

    const/4 p2, 0x2

    .line 64
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/MediaHost;->init(I)V

    .line 75
    sget-object p1, Lcom/android/systemui/media/KeyguardMediaController$useSplitShadeContainer$1;->INSTANCE:Lcom/android/systemui/media/KeyguardMediaController$useSplitShadeContainer$1;

    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->useSplitShadeContainer:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getMediaHost$p(Lcom/android/systemui/media/KeyguardMediaController;)Lcom/android/systemui/media/MediaHost;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    return-object p0
.end method

.method private final hideMediaPlayer()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->useSplitShadeContainer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/media/KeyguardMediaController;->setVisibility(Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/media/KeyguardMediaController;->setVisibility(Landroid/view/ViewGroup;I)V

    :goto_0
    return-void
.end method

.method private final setVisibility(Landroid/view/ViewGroup;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 159
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p2, :cond_5

    .line 160
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController;->visibilityChangedListener:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_3

    goto :goto_4

    :cond_3
    if-nez p2, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    return-void
.end method

.method private final showMediaPlayer()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->useSplitShadeContainer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    .line 124
    iget-object v1, p0, Lcom/android/systemui/media/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    .line 122
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/media/KeyguardMediaController;->showMediaPlayer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    .line 128
    iget-object v1, p0, Lcom/android/systemui/media/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/media/KeyguardMediaController;->showMediaPlayer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    :goto_0
    return-void
.end method

.method private final showMediaPlayer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 134
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    move-object v1, v0

    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_8

    .line 139
    iget-object v1, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 140
    :cond_5
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_6
    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    :goto_4
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/media/KeyguardMediaController;->setVisibility(Landroid/view/ViewGroup;I)V

    const/16 p1, 0x8

    .line 145
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/media/KeyguardMediaController;->setVisibility(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method public final attachSinglePaneContainer(Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;)V
    .locals 1

    .line 81
    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    .line 84
    iget-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaHost;->setVisible(Z)V

    .line 85
    iget-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    new-instance v0, Lcom/android/systemui/media/KeyguardMediaController$attachSinglePaneContainer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/KeyguardMediaController$attachSinglePaneContainer$1;-><init>(Lcom/android/systemui/media/KeyguardMediaController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaHost;->addVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/media/KeyguardMediaController;->refreshMediaPosition()V

    return-void
.end method

.method public final attachSplitShadeContainer(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "useContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    .line 102
    iput-object p2, p0, Lcom/android/systemui/media/KeyguardMediaController;->useSplitShadeContainer:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final getSinglePaneContainer()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    return-object p0
.end method

.method public final refreshMediaPosition()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 109
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    iget-object v3, p0, Lcom/android/systemui/media/KeyguardMediaController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/media/KeyguardMediaController;->showMediaPlayer()V

    goto :goto_2

    .line 116
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/media/KeyguardMediaController;->hideMediaPlayer()V

    :goto_2
    return-void
.end method

.method public final setVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->visibilityChangedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method
