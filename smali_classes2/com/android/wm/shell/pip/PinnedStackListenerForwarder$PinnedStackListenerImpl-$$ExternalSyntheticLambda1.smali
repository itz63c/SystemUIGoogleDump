.class public final synthetic Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->$r8$lambda$4sU9ZMYPzfD5dhgIGI_W2KE9iI4(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;Landroid/content/ComponentName;)V

    return-void
.end method
