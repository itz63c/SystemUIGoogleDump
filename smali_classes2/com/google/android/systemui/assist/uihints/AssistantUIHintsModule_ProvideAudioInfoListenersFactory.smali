.class public final Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideAudioInfoListenersFactory;
.super Ljava/lang/Object;
.source "AssistantUIHintsModule_ProvideAudioInfoListenersFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final edgeLightsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;",
            ">;"
        }
    .end annotation
.end field

.field private final glowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GlowController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GlowController;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideAudioInfoListenersFactory;->edgeLightsControllerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideAudioInfoListenersFactory;->glowControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideAudioInfoListenersFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GlowController;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideAudioInfoListenersFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideAudioInfoListenersFactory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideAudioInfoListenersFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAudioInfoListeners(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;Lcom/google/android/systemui/assist/uihints/GlowController;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;",
            "Lcom/google/android/systemui/assist/uihints/GlowController;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule;->provideAudioInfoListeners(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;Lcom/google/android/systemui/assist/uihints/GlowController;)Ljava/util/Set;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideAudioInfoListenersFactory;->get()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideAudioInfoListenersFactory;->edgeLightsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideAudioInfoListenersFactory;->glowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-static {v0, p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideAudioInfoListenersFactory;->provideAudioInfoListeners(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;Lcom/google/android/systemui/assist/uihints/GlowController;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
