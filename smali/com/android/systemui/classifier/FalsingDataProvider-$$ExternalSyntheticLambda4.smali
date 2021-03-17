.class public final synthetic Lcom/android/systemui/classifier/FalsingDataProvider-$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/classifier/FalsingDataProvider-$$ExternalSyntheticLambda4;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider-$$ExternalSyntheticLambda4;->f$0:J

    check-cast p1, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->$r8$lambda$XiO-7-cAB-jgOl-pYxSyD0vfzUs(JLcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;)Z

    move-result p0

    return p0
.end method
