.class public final Lcom/android/systemui/media/KeyguardMediaController$1;
.super Ljava/lang/Object;
.source "KeyguardMediaController.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/KeyguardMediaController;-><init>(Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/KeyguardMediaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/KeyguardMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController$1;->this$0:Lcom/android/systemui/media/KeyguardMediaController;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozingChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController$1;->this$0:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-static {p1}, Lcom/android/systemui/media/KeyguardMediaController;->access$getMediaHost$p(Lcom/android/systemui/media/KeyguardMediaController;)Lcom/android/systemui/media/MediaHost;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaHost;->setVisible(Z)V

    .line 53
    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController$1;->this$0:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-virtual {p0}, Lcom/android/systemui/media/KeyguardMediaController;->refreshMediaPosition()V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController$1;->this$0:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-virtual {p0}, Lcom/android/systemui/media/KeyguardMediaController;->refreshMediaPosition()V

    return-void
.end method
