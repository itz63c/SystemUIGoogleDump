.class public final Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;
.super Ljava/lang/Object;
.source "ManageMedia_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/actions/ManageMedia;",
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

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/media/session/MediaSessionManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/media/session/MediaSessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;->mediaSessionManagerProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/media/session/MediaSessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ldagger/Lazy;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/actions/ManageMedia;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Landroid/media/session/MediaSessionManager;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")",
            "Lcom/google/android/systemui/columbus/actions/ManageMedia;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/android/systemui/columbus/actions/ManageMedia;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/actions/ManageMedia;-><init>(Landroid/content/Context;Ldagger/Lazy;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/actions/ManageMedia;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;->mediaSessionManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;->newInstance(Landroid/content/Context;Ldagger/Lazy;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/actions/ManageMedia;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/ManageMedia_Factory;->get()Lcom/google/android/systemui/columbus/actions/ManageMedia;

    move-result-object p0

    return-object p0
.end method
