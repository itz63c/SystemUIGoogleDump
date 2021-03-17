.class public final synthetic Lcom/android/systemui/classifier/BrightLineFalsingManager$2-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

.field public final synthetic f$1:Ljava/util/Collection;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/BrightLineFalsingManager$2;Ljava/util/Collection;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2-$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    iput-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2-$$ExternalSyntheticLambda0;->f$1:Ljava/util/Collection;

    iput-wide p3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2-$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2-$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2-$$ExternalSyntheticLambda0;->f$1:Ljava/util/Collection;

    iget-wide v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2-$$ExternalSyntheticLambda0;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->$r8$lambda$Z7eof5ii-b9Bmtjz28vhAk2F8xg(Lcom/android/systemui/classifier/BrightLineFalsingManager$2;Ljava/util/Collection;J)V

    return-void
.end method
