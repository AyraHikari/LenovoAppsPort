.class Lzui/widget/NumberPickerX$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "NumberPickerX.java"

# interfaces
.implements Lzui/widget/NumberPickerX$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/NumberPickerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field mFmt:Ljava/util/Formatter;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lzui/widget/NumberPickerX$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 134
    iput-object v0, p0, Lzui/widget/NumberPickerX$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lzui/widget/NumberPickerX$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    return-void
.end method

.method private createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 2

    .line 160
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lzui/widget/NumberPickerX$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private init(Ljava/util/Locale;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lzui/widget/NumberPickerX$TwoDigitFormatter;->createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/NumberPickerX$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2

    .line 146
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Lzui/widget/NumberPickerX$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 148
    iget-object v0, p0, Lzui/widget/NumberPickerX$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 149
    iget-object p1, p0, Lzui/widget/NumberPickerX$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 150
    iget-object p1, p0, Lzui/widget/NumberPickerX$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    iget-object v0, p0, Lzui/widget/NumberPickerX$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lzui/widget/NumberPickerX$TwoDigitFormatter;->formatDigits(Ljava/util/Formatter;[Ljava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lzui/widget/NumberPickerX$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected formatDigits(Ljava/util/Formatter;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "%02d"

    .line 155
    invoke-virtual {p1, v0, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method
