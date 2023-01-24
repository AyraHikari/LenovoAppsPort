.class Lzui/widget/NumberPickerX$ThreeDigitFormatter;
.super Lzui/widget/NumberPickerX$TwoDigitFormatter;
.source "NumberPickerX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/NumberPickerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreeDigitFormatter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lzui/widget/NumberPickerX$TwoDigitFormatter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/NumberPickerX$1;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lzui/widget/NumberPickerX$ThreeDigitFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method protected formatDigits(Ljava/util/Formatter;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "%03d"

    .line 182
    invoke-virtual {p1, v0, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method
