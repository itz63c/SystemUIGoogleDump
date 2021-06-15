.class public final Lcom/android/systemui/media/MediaHost;
.super Ljava/lang/Object;
.source "MediaHost.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaHostState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaHost.kt\ncom/android/systemui/media/MediaHost\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n1819#2,2:319\n*E\n*S KotlinDebug\n*F\n+ 1 MediaHost.kt\ncom/android/systemui/media/MediaHost\n*L\n143#1,2:319\n*E\n"
.end annotation


# instance fields
.field private final currentBounds:Landroid/graphics/Rect;

.field public hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

.field private inited:Z

.field private final listener:Lcom/android/systemui/media/MediaHost$listener$1;

.field private location:I

.field private final mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

.field private final mediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

.field private final mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

.field private final state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

.field private final tmpLocationOnScreen:[I

.field private visibleChangedListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaHostStatesManager;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaHierarchyManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaDataManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaHostStatesManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/media/MediaHost;->mediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    .line 18
    iput-object p3, p0, Lcom/android/systemui/media/MediaHost;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    .line 19
    iput-object p4, p0, Lcom/android/systemui/media/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/android/systemui/media/MediaHost;->location:I

    .line 24
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 26
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    .line 33
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->currentBounds:Landroid/graphics/Rect;

    .line 54
    new-instance p1, Lcom/android/systemui/media/MediaHost$listener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHost$listener$1;-><init>(Lcom/android/systemui/media/MediaHost;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->listener:Lcom/android/systemui/media/MediaHost$listener$1;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static final synthetic access$getListener$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaHost$listener$1;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->listener:Lcom/android/systemui/media/MediaHost$listener$1;

    return-object p0
.end method

.method public static final synthetic access$getMediaDataManager$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaDataManager;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    return-object p0
.end method

.method public static final synthetic access$getMediaHostStatesManager$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaHostStatesManager;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    return-object p0
.end method

.method public static final synthetic access$updateViewVisibility(Lcom/android/systemui/media/MediaHost;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHost;->updateViewVisibility()V

    return-void
.end method

.method private final updateViewVisibility()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getShowsOnlyActiveMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDataManager;->hasActiveMedia()Z

    move-result v0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDataManager;->hasAnyMedia()Z

    move-result v0

    .line 135
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHost;->setVisible(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 141
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final addVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy()Lcom/android/systemui/media/MediaHostState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->copy()Lcom/android/systemui/media/MediaHostState;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentBounds()Landroid/graphics/Rect;
    .locals 6

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    .line 37
    iget-object v2, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    .line 38
    iget-object v4, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    aget v4, v4, v1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 39
    iget-object v5, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    aget v3, v5, v3

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    if-ge v4, v0, :cond_0

    move v0, v1

    move v4, v0

    :cond_0
    if-ge v3, v2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/MediaHost;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 51
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->currentBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object p0

    return-object p0
.end method

.method public getExpansion()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getExpansion()F

    move-result p0

    return p0
.end method

.method public getFalsingProtectionNeeded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getFalsingProtectionNeeded()Z

    move-result p0

    return p0
.end method

.method public final getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "hostView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getLocation()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/systemui/media/MediaHost;->location:I

    return p0
.end method

.method public getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object p0

    return-object p0
.end method

.method public getShowsOnlyActiveMedia()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getShowsOnlyActiveMedia()Z

    move-result p0

    return p0
.end method

.method public getVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getVisible()Z

    move-result p0

    return p0
.end method

.method public final init(I)V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHost;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaHost;->inited:Z

    .line 94
    iput p1, p0, Lcom/android/systemui/media/MediaHost;->location:I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->mediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/MediaHierarchyManager;->register(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHost;->setHostView(Lcom/android/systemui/util/animation/UniqueObjectHostView;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/MediaHost$init$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaHost$init$1;-><init>(Lcom/android/systemui/media/MediaHost;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/MediaHost$init$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaHost$init$2;-><init>(Lcom/android/systemui/media/MediaHost;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostView;->setMeasurementManager(Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    new-instance v1, Lcom/android/systemui/media/MediaHost$init$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaHost$init$3;-><init>(Lcom/android/systemui/media/MediaHost;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setChangedListener(Lkotlin/jvm/functions/Function0;)V

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHost;->updateViewVisibility()V

    return-void
.end method

.method public final removeVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    return-void
.end method

.method public setFalsingProtectionNeeded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setFalsingProtectionNeeded(Z)V

    return-void
.end method

.method public final setHostView(Lcom/android/systemui/util/animation/UniqueObjectHostView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    return-void
.end method

.method public setShowsOnlyActiveMedia(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setShowsOnlyActiveMedia(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setVisible(Z)V

    return-void
.end method
