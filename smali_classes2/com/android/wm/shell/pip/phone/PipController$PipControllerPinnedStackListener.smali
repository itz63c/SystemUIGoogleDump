.class Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;
.super Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListener;
.source "PipController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/phone/PipController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipControllerPinnedStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/pip/phone/PipController$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method


# virtual methods
.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->setAppActions(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public onActivityHidden(Landroid/content/ComponentName;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipController;->access$300(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getLastPipComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$300(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setLastPipComponentName(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public onAspectRatioChanged(F)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipController;->access$300(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setAspectRatio(F)V

    .line 215
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$600(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onAspectRatioChanged()V

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipController;->access$300(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setImeVisibility(ZI)V

    .line 186
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$600(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onImeVisibilityChanged(ZI)V

    return-void
.end method

.method public onMovementBoundsChanged(Z)V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->access$700(Lcom/android/wm/shell/pip/phone/PipController;Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method
