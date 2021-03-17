.class public final synthetic Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/ScrimView;

.field public final synthetic f$1:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/ScrimView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda3;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/ScrimView;->$r8$lambda$aC14V9chMq9oDSWAFqoxRs679x8(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    return-void
.end method
