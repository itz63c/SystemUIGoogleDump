.class public Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;
.super Landroid/os/AsyncTask;
.source "BubbleViewInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;,
        Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field private mCallback:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field private mIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

.field private mMainExecutor:Ljava/util/concurrent/Executor;

.field private mSkipInflation:Z

.field private mStackView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/wm/shell/bubbles/BubbleStackView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bjrZXW7cIM5nTL24Nd8boJ6Nc9o(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->lambda$onPostExecute$0(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/bubbles/Bubble;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;ZLcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 90
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 91
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mController:Ljava/lang/ref/WeakReference;

    .line 92
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mStackView:Ljava/lang/ref/WeakReference;

    .line 93
    iput-object p5, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    .line 94
    iput-boolean p6, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mSkipInflation:Z

    .line 95
    iput-object p7, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mCallback:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;

    .line 96
    iput-object p8, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic lambda$onPostExecute$0(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setViewInfo(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    .line 112
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mCallback:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;

    if-eqz p1, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;->onBubbleViewsReady(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_0
    return-void
.end method

.method static loadSenderAvatar(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 218
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 221
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 221
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 224
    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;
    .locals 6

    .line 101
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mStackView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-boolean v5, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mSkipInflation:Z

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->populate(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/Bubble;Z)Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->doInBackground([Ljava/lang/Void;)Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->onPostExecute(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    return-void
.end method
