.class public Lcom/android/systemui/classifier/TypeClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "TypeClassifier.java"


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    return-void
.end method

.method private getReason()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isVertical()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isUp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isRight()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string/jumbo p0, "{vertical=%s, up=%s, right=%s}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method calculateFalsingResult(DD)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isVertical()Z

    move-result p1

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isUp()Z

    move-result p2

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isRight()Z

    move-result p3

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getInteractionType()I

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_5

    if-eq p4, v1, :cond_6

    const/4 v2, 0x2

    if-eq p4, v2, :cond_5

    const/4 v2, 0x4

    if-eq p4, v2, :cond_4

    const/4 v2, 0x5

    if-eq p4, v2, :cond_3

    const/4 v2, 0x6

    if-eq p4, v2, :cond_1

    const/16 p3, 0x8

    if-eq p4, p3, :cond_4

    const/16 p3, 0x9

    if-eq p4, p3, :cond_5

    :cond_0
    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_0

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_0

    if-nez p2, :cond_2

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/classifier/TypeClassifier;->getReason()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    goto :goto_2

    :cond_7
    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    :goto_2
    return-object p0
.end method
