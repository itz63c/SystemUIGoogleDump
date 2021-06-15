.class public final Lcom/android/systemui/toast/ToastFactory_Factory;
.super Ljava/lang/Object;
.source "ToastFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/toast/ToastFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
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
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/toast/ToastFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;)",
            "Lcom/android/systemui/toast/ToastFactory_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/systemui/toast/ToastFactory_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/toast/ToastFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/view/LayoutInflater;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;)Lcom/android/systemui/toast/ToastFactory;
    .locals 1

    .line 50
    new-instance v0, Lcom/android/systemui/toast/ToastFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/toast/ToastFactory;-><init>(Landroid/view/LayoutInflater;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/toast/ToastFactory;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v2, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/toast/ToastFactory_Factory;->newInstance(Landroid/view/LayoutInflater;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;)Lcom/android/systemui/toast/ToastFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/toast/ToastFactory_Factory;->get()Lcom/android/systemui/toast/ToastFactory;

    move-result-object p0

    return-object p0
.end method
