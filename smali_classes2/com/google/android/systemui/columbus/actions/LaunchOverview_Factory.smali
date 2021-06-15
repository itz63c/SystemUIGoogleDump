.class public final Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;
.super Ljava/lang/Object;
.source "LaunchOverview_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/actions/LaunchOverview;",
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

.field private final recentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field

.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
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
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->recentsProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/recents/Recents;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/actions/LaunchOverview;
    .locals 1

    .line 44
    new-instance v0, Lcom/google/android/systemui/columbus/actions/LaunchOverview;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/columbus/actions/LaunchOverview;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/Recents;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/actions/LaunchOverview;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->recentsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/Recents;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/recents/Recents;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/actions/LaunchOverview;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->get()Lcom/google/android/systemui/columbus/actions/LaunchOverview;

    move-result-object p0

    return-object p0
.end method