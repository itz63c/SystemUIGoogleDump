.class public abstract Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;
.super Ljava/lang/Object;
.source "NavigationBarEffect.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field private final mFeedbackEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mNavMode:I

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 27
    invoke-virtual {p2, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mNavMode:I

    return-void
.end method

.method private isAllowed()Z
    .locals 0

    .line 104
    iget p0, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mNavMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private refreshFeedbackEffects()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->isAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->validateFeedbackEffects(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->findFeedbackEffects(Lcom/android/systemui/navigationbar/NavigationBarView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void

    .line 90
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->reset()V

    return-void
.end method


# virtual methods
.method protected abstract findFeedbackEffects(Lcom/android/systemui/navigationbar/NavigationBarView;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/NavigationBarView;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract isActiveFeedbackEffect(Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;)Z
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mNavMode:I

    .line 83
    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->refreshFeedbackEffects()V

    return-void
.end method

.method public onProgress(FI)V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->refreshFeedbackEffects()V

    const/4 v0, 0x0

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    .line 35
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->isActiveFeedbackEffect(Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {v1, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onProgress(FI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->refreshFeedbackEffects()V

    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onRelease()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->refreshFeedbackEffects()V

    const/4 v0, 0x0

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v1, p1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected abstract validateFeedbackEffects(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;)Z"
        }
    .end annotation
.end method
