.class public final Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideShortcutManagerFactory;
.super Ljava/lang/Object;
.source "FrameworkServicesModule_ProvideShortcutManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/pm/ShortcutManager;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideShortcutManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideShortcutManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideShortcutManagerFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideShortcutManagerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideShortcutManagerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule;->provideShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/pm/ShortcutManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideShortcutManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideShortcutManagerFactory;->provideShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideShortcutManagerFactory;->get()Landroid/content/pm/ShortcutManager;

    move-result-object p0

    return-object p0
.end method
