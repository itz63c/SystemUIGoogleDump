.class Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;
.super Ljava/lang/Object;
.source "SmartReplyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SmartReplyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartSuggestionMeasures"
.end annotation


# instance fields
.field mButtonPaddingHorizontal:I

.field mMaxChildHeight:I

.field mMeasuredWidth:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 411
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 412
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 413
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    .line 417
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 418
    iput p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 419
    iput p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;
    .locals 3

    .line 423
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->clone()Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    move-result-object p0

    return-object p0
.end method
