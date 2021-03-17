.class Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;
.super Ljava/lang/Object;
.source "EntryPointController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/EntryPointController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewRippler"
.end annotation


# instance fields
.field private final mRipple:Ljava/lang/Runnable;

.field private mRoot:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance p1, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler$1;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;)V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/google/android/systemui/gamedashboard/EntryPointController$1;)V
    .locals 0

    .line 298
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;)Landroid/view/View;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRoot:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public start(Landroid/view/View;)V
    .locals 3

    .line 304
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->stop()V

    .line 306
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRoot:Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 310
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 311
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 312
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 313
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRoot:Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 318
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->mRipple:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
