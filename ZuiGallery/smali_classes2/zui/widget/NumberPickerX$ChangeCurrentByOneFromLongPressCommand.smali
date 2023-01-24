.class Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPickerX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/NumberPickerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lzui/widget/NumberPickerX;


# direct methods
.method constructor <init>(Lzui/widget/NumberPickerX;)V
    .locals 0

    .line 2021
    iput-object p1, p0, Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->this$0:Lzui/widget/NumberPickerX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 2021
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    .line 2025
    iput-boolean p1, p0, Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2030
    iget-object v0, p0, Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->this$0:Lzui/widget/NumberPickerX;

    iget-boolean v1, p0, Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lzui/widget/NumberPickerX;->access$100(Lzui/widget/NumberPickerX;Z)V

    .line 2031
    iget-object v0, p0, Lzui/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1200(Lzui/widget/NumberPickerX;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lzui/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
