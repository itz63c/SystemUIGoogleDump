.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconSizeResourceIdFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideAssistantIconSizeResourceIdFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final resProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
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
            "Landroid/content/res/Resources;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconSizeResourceIdFactory;->resProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconSizeResourceIdFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;)",
            "Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconSizeResourceIdFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconSizeResourceIdFactory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconSizeResourceIdFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAssistantIconSizeResourceId(Landroid/content/res/Resources;)I
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideAssistantIconSizeResourceId(Landroid/content/res/Resources;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconSizeResourceIdFactory;->resProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    invoke-static {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconSizeResourceIdFactory;->provideAssistantIconSizeResourceId(Landroid/content/res/Resources;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconSizeResourceIdFactory;->get()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
