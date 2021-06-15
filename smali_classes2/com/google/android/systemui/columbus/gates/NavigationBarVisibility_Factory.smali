.class public final Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;
.super Ljava/lang/Object;
.source "NavigationBarVisibility_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;>;"
        }
    .end annotation
.end field

.field private final keyguardGateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationModeGateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->exceptionsProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->assistManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->keyguardGateProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->navigationModeGateProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)",
            "Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;"
        }
    .end annotation

    .line 56
    new-instance v7, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/List;Lcom/android/systemui/assist/AssistManager;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;",
            "Lcom/android/systemui/assist/AssistManager;",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            "Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ")",
            "Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;"
        }
    .end annotation

    .line 62
    new-instance v7, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/systemui/assist/AssistManager;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;Lcom/android/systemui/statusbar/CommandQueue;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->exceptionsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->assistManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/assist/AssistManager;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->keyguardGateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->navigationModeGateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static/range {v1 .. v6}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->newInstance(Landroid/content/Context;Ljava/util/List;Lcom/android/systemui/assist/AssistManager;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility_Factory;->get()Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    move-result-object p0

    return-object p0
.end method
