.class Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukViewController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 128
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;Lcom/android/keyguard/KeyguardSimPukViewController$1;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 3

    .line 132
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$300(Lcom/android/keyguard/KeyguardSimPukViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 135
    sget v0, Lcom/android/systemui/R$string;->kg_puk_enter_pin_hint:I

    goto :goto_0

    .line 137
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_sim_puk_hint:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v1, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$400(Lcom/android/keyguard/KeyguardSimPukViewController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 142
    sget v0, Lcom/android/systemui/R$string;->kg_enter_confirm_pin_hint:I

    goto :goto_0

    .line 144
    :cond_2
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_5

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->confirmPin()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    .line 148
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 149
    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_unlock_progress_dialog_message:I

    .line 150
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$500(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    goto :goto_0

    .line 152
    :cond_4
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 153
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_confirm_pin_hint:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$600(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v2, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_6

    .line 158
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    :cond_6
    return-void
.end method

.method reset()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$702(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$802(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 167
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$900(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    .line 168
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$200(Lcom/android/keyguard/KeyguardSimPukViewController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$1000(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$1100(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$1200(Lcom/android/keyguard/KeyguardSimPukViewController;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v1

    .line 173
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$1300(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSimPukView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_esim_area:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardEsimArea;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 174
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
