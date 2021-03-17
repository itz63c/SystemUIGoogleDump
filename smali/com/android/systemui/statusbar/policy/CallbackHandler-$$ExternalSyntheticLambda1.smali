.class public final synthetic Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public final synthetic f$10:Z

.field public final synthetic f$11:I

.field public final synthetic f$12:Z

.field public final synthetic f$13:Z

.field public final synthetic f$2:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:Ljava/lang/CharSequence;

.field public final synthetic f$8:Ljava/lang/CharSequence;

.field public final synthetic f$9:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$4:I

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$5:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$6:Z

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$7:Ljava/lang/CharSequence;

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$8:Ljava/lang/CharSequence;

    iput-object p10, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$9:Ljava/lang/CharSequence;

    iput-boolean p11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$10:Z

    iput p12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$11:I

    iput-boolean p13, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$12:Z

    iput-boolean p14, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$13:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$4:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$5:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$6:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$7:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$8:Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$9:Ljava/lang/CharSequence;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$10:Z

    iget v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$11:I

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$12:Z

    iget-boolean v13, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler-$$ExternalSyntheticLambda1;->f$13:Z

    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->$r8$lambda$3neBKZmchDqH-hWrpVql0eDiCFY(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    return-void
.end method
