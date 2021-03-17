.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOverscrollTopChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method public static synthetic $r8$lambda$vLGHr0xunJK3yFbYjLzcDSi4lVQ(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->lambda$flingTopOverscroll$0()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 3621
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 3621
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method

.method private synthetic lambda$flingTopOverscroll$0()V
    .locals 2

    .line 3644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 3645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    .line 3646
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public flingTopOverscroll(FZ)V
    .locals 4

    .line 3639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 3640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 3641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)V

    .line 3642
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    move p1, v1

    :cond_0
    if-eqz p2, :cond_1

    .line 3643
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;)V

    .line 3642
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FILjava/lang/Runnable;Z)V

    return-void
.end method

.method public onOverscrollTopChanged(FZ)V
    .locals 4

    .line 3625
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 3626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p1, v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 3630
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    .line 3631
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-static {p2, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 3632
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 3633
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 3634
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)V

    return-void
.end method
