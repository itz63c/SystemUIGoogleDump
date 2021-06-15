.class public final Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "NonGesturalNavigation.kt"


# instance fields
.field private currentModeIsGestural:Z

.field private final modeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final modeListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 16
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->modeController:Ldagger/Lazy;

    .line 18
    new-instance p1, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation$modeListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation$modeListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->modeListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    return-void
.end method

.method public static final synthetic access$setCurrentModeIsGestural$p(Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->currentModeIsGestural:Z

    return-void
.end method

.method public static final synthetic access$updateBlocking(Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->updateBlocking()V

    return-void
.end method

.method private final updateBlocking()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->isNavigationGestural()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method


# virtual methods
.method public final isNavigationGestural()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->currentModeIsGestural:Z

    return p0
.end method

.method protected onActivate()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->modeController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->modeListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    .line 27
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->modeListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;->onNavigationModeChanged(I)V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->modeController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->modeListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    return-void
.end method
