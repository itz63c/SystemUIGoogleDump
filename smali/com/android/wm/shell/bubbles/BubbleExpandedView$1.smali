.class Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;
.super Ljava/lang/Object;
.source "BubbleExpandedView.java"

# interfaces
.implements Lcom/android/wm/shell/TaskView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleExpandedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDestroyed:Z

.field private mInitialized:Z

.field final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;


# direct methods
.method public static synthetic $r8$lambda$4FMOi9kJVJnfFRFZYDRppHEtBSY(Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->lambda$onTaskRemovalStarted$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$lTYGyhVul7lzRuobkZ3ts5XOgb4(Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;Landroid/app/ActivityOptions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->lambda$onInitialized$0(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->mInitialized:Z

    .line 130
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->mDestroyed:Z

    return-void
.end method

.method private synthetic lambda$onInitialized$0(Landroid/app/ActivityOptions;)V
    .locals 3

    const/4 v0, 0x1

    .line 156
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setTaskAlwaysOnTop(Z)V

    .line 157
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$400(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$100(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setApplyActivityFlagsForBubbles(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$500(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/TaskView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$100(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/wm/shell/TaskView;->startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 162
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x80000

    .line 164
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    .line 165
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.IS_BUBBLED"

    .line 166
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$100(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$100(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/Bubble;->setIntentActive()V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$500(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/TaskView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$600(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/wm/shell/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while displaying bubble: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$700(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; removing bubble"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bubbles"

    .line 176
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$700(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onTaskRemovalStarted$1()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 217
    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$100(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    .line 216
    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onBackPressedOnTaskRoot(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$000(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$200(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/BubbleStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    :cond_0
    return-void
.end method

.method public onInitialized()V
    .locals 3

    .line 140
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->mDestroyed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->mInitialized:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1-$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;Landroid/app/ActivityOptions;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->mInitialized:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onReleased()V
    .locals 1

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->mDestroyed:Z

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    .line 196
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p2, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$002(Lcom/android/wm/shell/bubbles/BubbleExpandedView;I)I

    .line 200
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->access$100(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onTaskVisibilityChanged(IZ)V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    return-void
.end method
