.class Lcom/android/systemui/qs/QuickStatusBarHeader$1;
.super Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
.source "QuickStatusBarHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlphaAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-direct {p0}, Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$000(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$300(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 2

    .line 278
    invoke-super {p0}, Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;->onAnimationAtStart()V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$000(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$300(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    .line 286
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$600(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$500(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$000(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$300(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    .line 273
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$500(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V

    return-void
.end method
