.class public final synthetic Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    iput-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda0;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda0;->f$1:[Z

    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->$r8$lambda$UEZzb6RjCo7c7mWeIL1czVGfZyI(Lcom/android/systemui/classifier/BrightLineFalsingManager;[ZLcom/android/systemui/classifier/FalsingClassifier$Result;)V

    return-void
.end method
