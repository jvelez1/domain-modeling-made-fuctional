defmodule Payments.Types.CardType do
  @type t :: :visa | :mastercard
end

defmodule Payments.Types.CheckNumber do
  @type t :: integer()
end

defmodule Payments.Types.CardNumber do
  @type t :: integer()
end

defmodule Payments.Types.CreditCardInfo do
  alias Payments.Types.{CardNumber, CardType}

  @type t :: %__MODULE__{card_type: CardType.t(), card_number: CardNumber.t()}

  defstruct [:card_type, :card_number]
end

defmodule Payments.Types.PaymentMethod do
  alias Payments.Types.{CheckNumber, CreditCardInfo}
  @type t :: :cash | CheckNumber.t() | CreditCardInfo.t()
end

defmodule Payments.Types.PaymentAmount do
  @type t :: float()
end

defmodule Payments.Types.Currency do
  @type t :: :EUR | :USD
end

defmodule Payments.Types.Payment do
  alias Payments.Types.{PaymentAmount, Currency, PaymentMethod}

  @type t :: %__MODULE__{
          amount: PaymentAmount.t(),
          currency: Currency.t(),
          method: PaymentMethod.t()
        }
  defstruct [:amount, :currency, :method]
end
