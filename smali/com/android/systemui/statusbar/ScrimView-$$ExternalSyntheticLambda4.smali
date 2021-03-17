.class public final synthetic Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/ScrimView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ScrimView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/ScrimView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/ScrimView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda4;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/ScrimView;->$r8$lambda$iJGFVS7GAcOVrnyeIZJ5Typ4Ciw(Lcom/android/systemui/statusbar/ScrimView;Z)V

    return-void
.end method
