.class public final Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;
.super Lcom/android/systemui/media/ResumeMediaBrowser$Callback;
.source "MediaResumeListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/systemui/media/MediaResumeListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaResumeListener;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iput-object p2, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->$componentName:Landroid/content/ComponentName;

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    :goto_0
    const-string v2, "MediaResumeListener"

    if-nez v0, :cond_2

    const-string v0, "Error after connect"

    .line 270
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    .line 272
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {p0, v1}, Lcom/android/systemui/media/MediaResumeListener;->access$setMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/ResumeMediaBrowser;)V

    return-void

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->$componentName:Landroid/content/ComponentName;

    const-string v1, "Connected for restart "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v1}, Lcom/android/systemui/media/MediaResumeListener;->access$getContext$p(Lcom/android/systemui/media/MediaResumeListener;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {p0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 277
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    .line 278
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->prepare()V

    .line 279
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    return-void
.end method

.method public onError()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->$componentName:Landroid/content/ComponentName;

    const-string v1, "Resume failed for "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaResumeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/ResumeMediaBrowser;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    .line 285
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaResumeListener;->access$setMediaBrowser$p(Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/ResumeMediaBrowser;)V

    return-void
.end method
