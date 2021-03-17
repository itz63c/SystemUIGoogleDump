.class public final synthetic Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda4;->f$1:Z

    iput p3, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda4;->f$1:Z

    iget p0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->$r8$lambda$9cQn7H-lSWu-3VxXa4CWQxDsCI8(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;ZI)V

    return-void
.end method
