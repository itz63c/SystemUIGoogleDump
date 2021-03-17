.class public final Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;
.super Ljava/lang/Object;
.source "SuperStatusBarViewFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final injectionInflationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationShelfComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->notificationShelfComponentBuilderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;",
            ">;)",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;)Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;
    .locals 1

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;-><init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/InjectionInflationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->notificationShelfComponentBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;)Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->get()Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    move-result-object p0

    return-object p0
.end method
