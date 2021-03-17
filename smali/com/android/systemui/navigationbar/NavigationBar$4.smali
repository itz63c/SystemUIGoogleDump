.class Lcom/android/systemui/navigationbar/NavigationBar$4;
.super Landroid/database/ContentObserver;
.source "NavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/os/Handler;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$4;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 380
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$4;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p1}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1100(Lcom/android/systemui/navigationbar/NavigationBar;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    const/4 p2, -0x2

    .line 381
    invoke-virtual {p1, p2}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 382
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar$4;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p2}, Lcom/android/systemui/navigationbar/NavigationBar;->access$500(Lcom/android/systemui/navigationbar/NavigationBar;)Z

    move-result p2

    if-eq p2, p1, :cond_1

    .line 383
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar$4;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p2, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->access$600(Lcom/android/systemui/navigationbar/NavigationBar;Z)V

    .line 384
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$4;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->access$502(Lcom/android/systemui/navigationbar/NavigationBar;Z)Z

    :cond_1
    return-void
.end method
