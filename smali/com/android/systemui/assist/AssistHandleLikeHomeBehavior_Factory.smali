.class public final Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;
.super Ljava/lang/Object;
.source "AssistHandleLikeHomeBehavior_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;",
        ">;"
    }
.end annotation


# instance fields
.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final sysUiFlagContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->sysUiFlagContainerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;-><init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->sysUiFlagContainerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->newInstance(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->get()Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;

    move-result-object p0

    return-object p0
.end method
