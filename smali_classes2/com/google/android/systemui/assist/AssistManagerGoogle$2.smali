.class Lcom/google/android/systemui/assist/AssistManagerGoogle$2;
.super Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.source "AssistManagerGoogle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/AssistManagerGoogle;->registerVoiceInteractionSessionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$2;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetUiHints(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "action"

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "show_assist_handles"

    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$2;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$300(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    return-void

    :cond_0
    const-string v1, "set_assist_gesture_constrained"

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$2;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$400(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/model/SysUiState;

    const/16 v0, 0x2000

    const-string v1, "should_constrain"

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 208
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    .line 211
    invoke-virtual {p0, v2}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$2;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$600(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$2;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$500(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->processBundle(Landroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVoiceSessionHidden()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$2;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$200(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/android/systemui/assist/AssistLogger;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_CLOSE:Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public onVoiceSessionShown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$2;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$100(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/android/systemui/assist/AssistLogger;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_UPDATE:Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
