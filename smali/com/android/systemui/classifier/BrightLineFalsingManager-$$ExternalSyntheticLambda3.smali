.class public final synthetic Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier;

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->$r8$lambda$oGjy9oJ8UpcZL76xXFvZZgZHgnc(Lcom/android/systemui/classifier/BrightLineFalsingManager;Lcom/android/systemui/classifier/FalsingClassifier;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method
