.class public Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StackScrollAlgorithmState"
.end annotation


# instance fields
.field private indexOfExpandingNotification:I

.field public scrollY:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

.field public final visibleChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->this$0:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)I
    .locals 0

    .line 643
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->indexOfExpandingNotification:I

    return p1
.end method


# virtual methods
.method public getIndexOfExpandingNotification()I
    .locals 0

    .line 658
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->indexOfExpandingNotification:I

    return p0
.end method
