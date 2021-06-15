.class Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/wm/shell/bubbles/Bubbles;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BubblesImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public static synthetic $r8$lambda$1poD-qxO-SOjc8ULiPrviWpyI8A(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$handleDismissalInterception$13(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2mU7rc5f0eif6A10JxA9U2OJwMg(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$removeSuppressedSummaryIfNecessary$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$33olpbGVRfV3n8pTaPRshMAC3KU(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$expandStackAndSelectBubble$8(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$33rm6BqEtSvYcUDw8LodZsSZFqo(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$isBubbleNotificationSuppressedFromShade$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$43jLcdVDtMXmtku7tE0CcOSA4Eg(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onCurrentProfilesChanged$25(Landroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4ELZkPW3p3lYx88wMEXWEl5Z734(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onUserChanged$24(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Ywa9mz0NqW7VnrUKnlS7m-q1VY(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$handleDismissalInterception$12(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DhhFkKbbDk0dImIObiNiNpjebN0(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onStatusBarStateChanged$23(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$FrXNjeKqbf_Lk2QaJoLbDgT4coE(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$removeSuppressedSummaryIfNecessary$5(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ikxxg_s35UPYtTm9eS3IPL9pZ1w(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onZenStateChanged$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$JJQiNulYM8DrLy3CeO19ZnQ9S_o(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$setSysuiProxy$14(Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OUGEySYulc5Soq3Acp79_HMTPEU(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$removeSuppressedSummaryIfNecessary$3(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RSmdyiAAw3rCAVHoeD2Z5afBBfI(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$dump$27(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TWfW_vZKVtpOeUcN_wZcfuP0b1k(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onEntryUpdated$18(Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$U75nmrh9yZsGBidEOk8LNCOdkOg(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$isStackExpanded$2()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U9os2BCv7b31Cp_P87sNdE9YR0o(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onEntryRemoved$19(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UWOYlWbXMeO8lVtQ4Ll8jHIgE0A(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onRankingUpdated$20(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cuW2KZwbL9zzY-d4dZ2SQdyU6jA(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onConfigChanged$26(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dETJ24ej8TnVvM2pdgPh9OTT1LE(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/view/View;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$setBubbleScrim$15(Landroid/view/View;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fXljbBCtTkIF14MYzyAQbf3-6ng(Ljava/util/function/IntConsumer;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$handleDismissalInterception$11(Ljava/util/function/IntConsumer;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l_Pucm3WLiKqT3L4FmhniKFa-pc(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onStatusBarVisibilityChanged$21(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lrs--8kSlmx_lOoD6x1ExVqiaJI(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$isBubbleExpanded$1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$m-1lNKd0jjPXdaysehAlTvpCdX8(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$setExpandListener$16(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xXAD2j5BN8GKBBbrMeaOj_4aeuE(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$collapseStack$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$yfj01ZQk-zycj9C82T4f1ifhFI8(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onTaskbarChanged$9(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zIgj2V3-H7grvNwlT4QA-Y8oUak(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$updateForThemeChanges$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$zpPqSSeeZ2Vs4suP7pCbCLC9dIY(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->lambda$onEntryAdded$17(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleController$1;)V
    .locals 0

    .line 1318
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    return-void
.end method

.method private synthetic lambda$collapseStack$6()V
    .locals 0

    .line 1354
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    return-void
.end method

.method private synthetic lambda$dump$27(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1494
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1300(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$expandStackAndSelectBubble$8(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 0

    .line 1368
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method private static synthetic lambda$handleDismissalInterception$11(Ljava/util/function/IntConsumer;I)V
    .locals 0

    .line 1391
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private static synthetic lambda$handleDismissalInterception$12(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;I)V
    .locals 1

    .line 1391
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda20;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$handleDismissalInterception$13(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Ljava/lang/Boolean;
    .locals 0

    .line 1394
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2400(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isBubbleExpanded$1(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1329
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2900(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isBubbleNotificationSuppressedFromShade$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1322
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isStackExpanded$2()Ljava/lang/Boolean;
    .locals 0

    .line 1336
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isStackExpanded()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onConfigChanged$26(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1486
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1400(Lcom/android/wm/shell/bubbles/BubbleController;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$onCurrentProfilesChanged$25(Landroid/util/SparseArray;)V
    .locals 0

    .line 1479
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onCurrentProfilesChanged(Landroid/util/SparseArray;)V

    return-void
.end method

.method private synthetic lambda$onEntryAdded$17(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 0

    .line 1422
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2100(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method private synthetic lambda$onEntryRemoved$19(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 0

    .line 1436
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1900(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method private synthetic lambda$onEntryUpdated$18(Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V
    .locals 0

    .line 1429
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2000(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    return-void
.end method

.method private synthetic lambda$onRankingUpdated$20(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .locals 0

    .line 1444
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1800(Lcom/android/wm/shell/bubbles/BubbleController;Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$onStatusBarStateChanged$23(Z)V
    .locals 0

    .line 1465
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1500(Lcom/android/wm/shell/bubbles/BubbleController;Z)V

    return-void
.end method

.method private synthetic lambda$onStatusBarVisibilityChanged$21(Z)V
    .locals 0

    .line 1451
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1700(Lcom/android/wm/shell/bubbles/BubbleController;Z)V

    return-void
.end method

.method private synthetic lambda$onTaskbarChanged$9(Landroid/os/Bundle;)V
    .locals 0

    .line 1375
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2600(Lcom/android/wm/shell/bubbles/BubbleController;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onUserChanged$24(I)V
    .locals 0

    .line 1472
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onUserChanged(I)V

    return-void
.end method

.method private synthetic lambda$onZenStateChanged$22()V
    .locals 0

    .line 1458
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1600(Lcom/android/wm/shell/bubbles/BubbleController;)V

    return-void
.end method

.method private static synthetic lambda$removeSuppressedSummaryIfNecessary$3(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    .line 1345
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$removeSuppressedSummaryIfNecessary$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 1

    .line 1345
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda19;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeSuppressedSummaryIfNecessary$5(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1345
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda21;

    invoke-direct {v0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda21;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1347
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p3, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2800(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$setBubbleScrim$15(Landroid/view/View;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 1408
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2200(Lcom/android/wm/shell/bubbles/BubbleController;Landroid/view/View;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private synthetic lambda$setExpandListener$16(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .locals 0

    .line 1415
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    return-void
.end method

.method private synthetic lambda$setSysuiProxy$14(Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V
    .locals 0

    .line 1401
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2300(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V

    return-void
.end method

.method private synthetic lambda$updateForThemeChanges$7()V
    .locals 0

    .line 1361
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$2700(Lcom/android/wm/shell/bubbles/BubbleController;)V

    return-void
.end method


# virtual methods
.method public collapseStack()V
    .locals 2

    .line 1353
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1493
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Bubbles"

    const-string p1, "Failed to dump BubbleController in 2s"

    .line 1497
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 2

    .line 1367
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleDismissalInterception(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;Ljava/util/concurrent/Executor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/concurrent/Executor;",
            ")Z"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1391
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0, p4, p3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda22;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1393
    :goto_0
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p3}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p3

    new-instance p4, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda24;

    invoke-direct {p4, p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda24;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)V

    const-class p0, Ljava/lang/Boolean;

    invoke-interface {p3, p4, p0}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlockingForResult(Ljava/util/function/Supplier;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBubbleExpanded(Ljava/lang/String;)Z
    .locals 2

    .line 1328
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda25;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/lang/String;)V

    const-class p0, Ljava/lang/Boolean;

    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlockingForResult(Ljava/util/function/Supplier;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1321
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda26;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, Ljava/lang/Boolean;

    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlockingForResult(Ljava/util/function/Supplier;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isStackExpanded()Z
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V

    const-class p0, Ljava/lang/Boolean;

    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlockingForResult(Ljava/util/function/Supplier;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1485
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCurrentProfilesChanged(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1478
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/util/SparseArray;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEntryAdded(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 2

    .line 1421
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEntryRemoved(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 2

    .line 1435
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V
    .locals 2

    .line 1428
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 1443
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatusBarStateChanged(Z)V
    .locals 2

    .line 1464
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatusBarVisibilityChanged(Z)V
    .locals 2

    .line 1450
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskbarChanged(Landroid/os/Bundle;)V
    .locals 2

    .line 1374
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserChanged(I)V
    .locals 2

    .line 1471
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZenStateChanged()V
    .locals 2

    .line 1457
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeSuppressedSummaryIfNecessary(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBubbleScrim(Landroid/view/View;Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 1407
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/view/View;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .locals 2

    .line 1414
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSysuiProxy(Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V
    .locals 2

    .line 1400
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateForThemeChanges()V
    .locals 2

    .line 1360
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
