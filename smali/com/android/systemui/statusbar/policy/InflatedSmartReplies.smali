.class public Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;
.super Ljava/lang/Object;
.source "InflatedSmartReplies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;
    }
.end annotation


# instance fields
.field private final mSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

.field private final mSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private final mSmartSuggestionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Ljava/util/List;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/SmartReplyView;",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartSuggestionButtons:Ljava/util/List;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    return-void
.end method


# virtual methods
.method public getSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    return-object p0
.end method

.method public getSmartReplyView()Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    return-object p0
.end method

.method public getSmartSuggestionButtons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartSuggestionButtons:Ljava/util/List;

    return-object p0
.end method
